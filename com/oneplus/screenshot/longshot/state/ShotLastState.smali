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

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 12
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_LAST:I

    packed-switch v0, :pswitch_data_56

    .line 26
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    goto :goto_35

    .line 14
    :pswitch_11
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_5:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 15
    goto :goto_35

    .line 17
    :pswitch_1a
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 18
    goto :goto_35

    .line 20
    :pswitch_23
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 21
    goto :goto_35

    .line 23
    :pswitch_2c
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 24
    nop

    .line 29
    :goto_35
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_DELAY:I

    packed-switch v0, :pswitch_data_62

    .line 38
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_LAST_DELAY_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mCaptureDelay:I

    goto :goto_55

    .line 32
    :pswitch_43
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_LAST_DELAY_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mCaptureDelay:I

    .line 33
    goto :goto_55

    .line 35
    :pswitch_4c
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_LAST_DELAY_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mCaptureDelay:I

    .line 36
    nop

    .line 41
    :goto_55
    return-void

    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
        :pswitch_11
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x2
        :pswitch_4c
        :pswitch_43
        :pswitch_43
    .end packed-switch
.end method


# virtual methods
.method protected getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .registers 2

    .line 48
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method
